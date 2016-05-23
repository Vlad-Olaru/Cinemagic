var price = 25; //price
$(document).ready(function() {

    var occupiedSeats = $("#occupiedSeats").val();
    var splittedOccupiedSeats = occupiedSeats.split(",");

    var $cart = $('#selected-seats'), //Sitting Area
        $counter = $('#counter'), //Votes
        $total = $('#total'); //Total money

    var sc = $('#seat-map').seatCharts({
        map: [  //Seating chart
            'aaaaaaaaaa',
            'aaaaaaaaaa',
            '__________',
            'aaaaaaaa__',
            'aaaaaaaaaa',
            'aaaaaaaaaa',
            'aaaaaaaaaa',
            'aaaaaaaaaa',
            'aaaaaaaaaa',
            'aa__aa__aa'
        ],
        naming : {
            top : false,
            getLabel : function (character, row, column) {
                return column;
            }
        },
        legend : { //Definition legend
            node : $('#legend'),
            items : [
                [ 'a', 'available',   'Option' ],
                [ 'a', 'unavailable', 'Sold']
            ]
        },
        click: function () { //Click event
            if (this.status() == 'available') { //optional seat
                $('<li>R'+(this.settings.row+1)+' S'+this.settings.label+'</li>')
                    .attr('id', 'cart-item-'+this.settings.id)
                    .data('seatId', this.settings.id)
                    .appendTo($cart);

                $counter.text(sc.find('selected').length+1);
                $total.text(recalculateTotal(sc)+price);

                return 'selected';
            } else if (this.status() == 'selected') { //Checked
                //Update Number
                $counter.text(sc.find('selected').length-1);
                //update totalnum
                $total.text(recalculateTotal(sc)-price);

                //Delete reservation
                $('#cart-item-'+this.settings.id).remove();
                //optional
                return 'available';
            } else if (this.status() == 'unavailable') { //sold
                return 'unavailable';
            } else {
                return this.style();
            }
        }
    });
    //sold seat
    sc.get(splittedOccupiedSeats).status('unavailable');

    $('button.checkout-button').click(function(){
       sendData();
    });

});

function sendData() {

    var pathname = window.location.pathname;

    var selected_seats_children = $('#selected-seats').children();
    var selected_seats_ids = [];
    for(i=0; i < selected_seats_children.length; i++) {
        selected_seats_ids.push(selected_seats_children[i].id);
    }
    var selected_seats_numbers = [];
    for(i=0; i < selected_seats_ids.length; i++)
        selected_seats_numbers.push(selected_seats_ids[i].replace("cart-item-", ""));

    console.log("Selected seats numbers", selected_seats_numbers)

    $.ajax({
        type: "POST",
        url: pathname,
        data: {
            '_csrf': $('input[name="_csrf"]').val(),
            seatsToBeOccupied: selected_seats_numbers
        }
    }).done(function(result){
        window.location.href = '/home'
    }).fail(function(){
    });

}

//sum total money
function recalculateTotal(sc) {
    var total = 0;
    sc.find('selected').each(function () {
        total += price;
    });

    return total;
}