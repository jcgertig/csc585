# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  periods = [
    "Historic",
    "Prehistoric",
    "Paleoindian",
    "Archaic",
    "Woodland",
    "Mississippian",
    "Fort Ancient",
    "Other"
  ]
  periods.each {|name|
    Period.create(name: name.titleize)
  }

  types = [
    "Ceramic/Fired Clay",
    "Chipped Stone",
    "Faunal Bone",
    "Glass",
    "Ground stone",
    "Metal",
    "Other stone",
    "Other"
  ]
  types.each {|name|
    Type.create(name: name.titleize)
  }

  contexts = [
    "Cave",
    "Disturebed",
    "Farm Field/Pasture",
    "Garden",
    "Shoreline",
    "Urban",
    "Wooden",
    "Other"
  ]
  contexts.each {|name|
    Context.create(name: name.titleize)
  }

  counties = [
    "Adair", 
    "Allen", 
    "Anderson",
    "Ballard",
    "Barren",
    "Bath",
    "Bell",
    "Boone",
    "Bourbon",
    "Boyd",
    "Boyle",
    "Bracken",
    "Breathitt",
    "Breckinridge", 
    "Bullitt",
    "Butler",
    "Caldwell",
    "Calloway",
    "Campbell",
    "Carlisle",
    "Carroll",
    "Carter",
    "Casey",
    "Christian",
    "Clark",
    "Clay",
    "Clinton",
    "Crittenden", 
    "Cumberland",
    "Daviess",
    "Edmonson",
    "Elliott",
    "Estill",
    "Fayette",
    "Fleming",
    "Floyd",
    "Franklin", 
    "Fulton",
    "Gallatin",
    "Garrard",
    "Grant",
    "Graves",
    "Grayson",
    "Green",
    "Greenup",
    "Hancock",
    "Hardin",
    "Harlan",
    "Harrison",
    "Hart",
    "Henderson", 
    "Henry",
    "Hickman",
    "Hopkins",
    "Jackson",
    "Jefferson",
    "Jessamine",
    "Johnson",
    "Kenton",
    "Knott",
    "Knox",
    "Larue",
    "Laurelv",
    "Lawrence",
    "Lee",
    "Leslie", 
    "Letcher",
    "Lewis",
    "Lincoln",
    "Livingston", 
    "Logan",
    "Lyon",
    "Madison", 
    "Magoffin",
    "Marion",
    "Marshall",
    "Martin",
    "Mason",
    "McCracken", 
    "McCreary",
    "McLean",
    "Meade",
    "Menifee",
    "Mercer",
    "Metcalfe",
    "Monroe",
    "Montgomery", 
    "Morgan",
    "Muhlenburg", 
    "Nelson",
    "Nicholas",
    "Ohio",
    "Oldham",
    "Owen",
    "Owsley",
    "Pendleton", 
    "Perry",
    "Pike",
    "Powell",
    "Pulaski",
    "Robertson",
    "Rockcastle",
    "Rowan",
    "Russell",
    "Scott",
    "Shelby",
    "Simpson",
    "Spencer",
    "Taylor",
    "Todd",
    "Trigg",
    "Trimble",
    "Union",
    "Warren",
    "Washington", 
    "Wayne",
    "Webster",
    "Whitley",
    "Wolfe",
    "Woodford"
  ]
  counties.each {|name|
    County.create(name: name.titleize)
  }

  states = [
    ["ALABAMA", "AL"],
    ["ALASKA", "AK"],
    ["AMERICAN SAMOA", "AS"],
    ["ARIZONA", "AZ"],
    ["ARKANSAS", "AR"],
    ["CALIFORNIA", "CA"],
    ["COLORADO", "CO"],
    ["CONNECTICUT", "CT"],
    ["DELAWARE", "DE"],
    ["DISTRICT OF COLUMBIA", "DC"],
    ["FEDERATED STATES OF MICRONESIA", "FM"],
    ["FLORIDA", "FL"],
    ["GEORGIA", "GA"],
    ["GUAM GU", "GU"],
    ["HAWAII", "HI"],
    ["IDAHO", "ID"],
    ["ILLINOIS", "IL"],
    ["INDIANA", "IN"],
    ["IOWA", "IA"],
    ["KANSAS", "KS"],
    ["KENTUCKY", "KY"],
    ["LOUISIANA", "LA"],
    ["MAINE", "ME"],
    ["MARSHALL ISLANDS", "MH"],
    ["MARYLAND", "MD"],
    ["MASSACHUSETTS", "MA"],
    ["MICHIGAN", "MI"],
    ["MINNESOTA", "MN"],
    ["MISSISSIPPI", "MS"],
    ["MISSOURI", "MO"],
    ["MONTANA", "MT"],
    ["NEBRASKA", "NE"],
    ["NEVADA", "NV"],
    ["NEW HAMPSHIRE", "NH"],
    ["NEW JERSEY", "NJ"],
    ["NEW MEXICO", "NM"],
    ["NEW YORK", "NY"],
    ["NORTH CAROLINA", "NC"],
    ["NORTH DAKOTA", "ND"],
    ["NORTHERN MARIANA ISLANDS", "MP"],
    ["OHIO", "OH"],
    ["OKLAHOMA", "OK"],
    ["OREGON", "OR"],
    ["PALAU", "PW"],
    ["PENNSYLVANIA", "PA"],
    ["PUERTO RICO", "PR"],
    ["RHODE ISLAND", "RI"],
    ["SOUTH CAROLINA", "SC"],
    ["SOUTH DAKOTA", "SD"],
    ["TENNESSEE", "TN"],
    ["TEXAS", "TX"],
    ["UTAH", "UT"],
    ["VERMONT", "VT"],
    ["VIRGIN ISLANDS", "VI"],
    ["VIRGINIA", "VA"],
    ["WASHINGTON", "WA"],
    ["WEST VIRGINIA", "WV"],
    ["WISCONSIN", "WI"],
    ["WYOMING", "WY"]
  ]
  states.each {|name, abbr|
    st = State.find_by_abbr(abbr.downcase)
    st ||= State.create(abbr: abbr.downcase, name: name.titleize)
  }

  #Dr Raj - Advisor
  #User.create(email: "vraj@murraystate.edu", password: "csc585_password", kind: "admin")
  #Dr Wesler
  #User.create(email: "kwesler@murraystate.edu", password: "csc585_password", kind: "admin")
  #Jonathan Gertig - First Dev
  User.create(email: "jcgertig@gmail.com", password: "csc585_password", kind: "admin")