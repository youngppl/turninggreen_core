# frozen_string_literal: true

include ActionView::Helpers::TextHelper
include UsersHelper
include ChallengesHelper
class Challenge < ApplicationRecord
  belongs_to :user
  has_many :progress_logs
  has_one :reflection

  def content_data
    challenges[theme.to_sym][:challenges].find{|chall| chall[:name] == challenge_name}
  end

  def type
    content_data[:type]
  end

  def point_worth
    challenge_points[type.to_sym]
  end

  def theme_icon
    "themes/icons/#{theme.downcase}.svg"
  end

  def icon_path
    "challenges/#{theme.downcase}/#{challenge_name.downcase.tr(' ','-').tr('#','')}.png"
  end

  def get_time_left
    @weeks = (date_complete.getutc.to_date - DateTime.now.getutc.to_date) / 7
    if @weeks < 1
      @days = get_days_left
      pluralize @days.round, 'day'
    else
      pluralize @weeks.round, 'week'
    end
  end

  def get_days_left
    (date_complete.getutc.to_date - DateTime.now.getutc.to_date).to_i
  end

  def get_last_logged
    last_logged.nil? ? '--' : "#{last_logged.to_date.month}/#{last_logged.to_date.day}"
  end

  def last_logged_today?
    progress_logs.last && last_logged.to_date == DateTime.now.utc.to_date
  end

  def progress_bar_length
    ((last_logged - created_at) / (date_complete - created_at)) * 100
  end

  def get_marker_position(date)
    @percent_elapsed = (date - created_at) / (date_complete - created_at)
    (5 + (95 * @percent_elapsed))
  end

  def get_worm_length(date)
    @percent_elapsed = (date - created_at) / (date_complete - created_at)
    (359 + (274 * @percent_elapsed))
  end

  def today_marker_position
    get_marker_position(DateTime.now.getutc)
  end

  def cumulative_metrics
    @cumulative = 0
    progress_logs.each do |log|
      @cumulative += log.metric
    end
    @cumulative
  end

  def generate_data
    data = []
    progress_logs.order(:created_at).each do |log|
      data.push('t': log.created_at.to_date, 'y': log.metric)
    end
    data
  end

  def generate_cumulative_data
    data = []
    @cumulative = 0
    progress_logs.order(:created_at).each do |log|
      @cumulative += log.metric
      data.push('t': log.created_at.to_date, 'y': @cumulative)
    end
    data
  end

  def data
    data = {
      datasets: [
      {
        data: generate_data,
        hidden: true
      },
      {
        data: generate_cumulative_data,
        borderWidth: 4,
        pointBackgroundColor: 'green',
        radius: 4,
        borderColor: 'green',
        fill: false,
      },
     {
       data: [{
         t: date_complete.to_date,
         y: 0
       }],
       radius: 0
     },
     {
       data: [{
           t: created_at.to_date,
           y: 0
         }],
       radius: 0
     }]
    }
  end

  def options
    options = {
      maintainAspectRatio: false,
      legend: {
        display: false
      },
      scales: {
        yAxes: [{
          ticks: {
            min: 0,
            fontFamily: "'Raleway', 'sans-serif'",
            padding: 7,
            callback: "function(value) {if (value % 1 === 0) {return value;}}"
          },
          gridLines: {
            drawBorder: false
          }
        }],
        xAxes: [{
          ticks: {
            display: false
          },
          type: 'time',
          time: {
            unit: 'day'
          },
          gridLines: {
            display: false
          }
        }]
      },
      tooltips: {
        backgroundColor: 'white',
        borderWidth: 1,
        borderColor: '#cbcbcb',
        titleFontFamily: "'Raleway', 'sans-serif'",
        titleFontColor: 'black',
        bodyFontFamily: "'Raleway', 'sans-serif'",
        bodyFontColor: 'black',
        displayColors: false,
        callbacks: {
          title: "function(tooltipItem, data) {
            var months = ['January','February','March','April','May','June','July','August','September','October','November','December'];
            var parts = tooltipItem[0].xLabel.split('-');
            var mydate = new Date(parts[0], parts[1] - 1, parts[2]);
            return (months[mydate.getMonth()] + ' ' + mydate.getDate());
          }",
          label: "function(tooltipItem, data) {
            return ['this date: ' + data['datasets'][0].data[tooltipItem.index]['y'], 'cumulatively: ' + tooltipItem.yLabel];
          }"
        }
      }
    }
  end

  def options_mobile
    options = {
      responsive: true,
      maintainAspectRatio: false,
      legend: {
        display: false
      },
      scales: {
        yAxes: [{
          ticks: {
            min: 0,
            fontFamily: "'Raleway', 'sans-serif'",
            fontStyle: "bold",
            fontSize: 20,
            padding: 7,
            callback: "function(value) {if (value % 1 === 0) {return value;}}"
          },
          gridLines: {
            drawBorder: false
          }
        }],
        xAxes: [{
          ticks: {
            display: false
          },
          type: 'time',
          time: {
            unit: 'day'
          },
          gridLines: {
            display: false
          }
        }]
      }
    }
  end
end
