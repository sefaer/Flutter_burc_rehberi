package models

class Burclar {
    String color;
    String compatibility;
    String current_date;
    String date_range;
    String description;
    String lucky_number;
    String lucky_time;
    String mood;

    Burclar({this.color, this.compatibility, this.current_date, this.date_range, this.description, this.lucky_number, this.lucky_time, this.mood});

    factory Burclar.fromJson(Map<String, dynamic> json) {
        return Burclar(
            color: json['color'], 
            compatibility: json['compatibility'], 
            current_date: json['current_date'], 
            date_range: json['date_range'], 
            description: json['description'], 
            lucky_number: json['lucky_number'], 
            lucky_time: json['lucky_time'], 
            mood: json['mood'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['color'] = this.color;
        data['compatibility'] = this.compatibility;
        data['current_date'] = this.current_date;
        data['date_range'] = this.date_range;
        data['description'] = this.description;
        data['lucky_number'] = this.lucky_number;
        data['lucky_time'] = this.lucky_time;
        data['mood'] = this.mood;
        return data;
    }
}