import 'package:grocery_store/grocery_store.dart';
import 'package:test/test.dart';

List products = [
  {"id": 1, "name": "Apple", "price": 1.20, "type": "fruit"},
  {"id": 2, "name": "Orange", "price": 2.40, "type": "fruit"},
  {"id": 3, "name": "Banana", "price": 0.99, "type": "fruit"},
  {"id": 4, "name": "Carrot", "price": 0.50, "type": "vegetable"},
  {"id": 5, "name": "Celery", "price": 1.50, "type": "vegetable"},
  {"id": 6, "name": "Broccoli", "price": 1.99, "type": "vegetable"},
  {"id": 7, "name": "Milk", "price": 2.99, "type": "dairy"},
  {"id": 8, "name": "Cheese", "price": 3.99, "type": "dairy"},
  {"id": 9, "name": "Yogurt", "price": 0.99, "type": "dairy"},
  {"id": 10, "name": "Chicken", "price": 4.99, "type": "meat"},
  {"id": 11, "name": "Beef", "price": 5.99, "type": "meat"},
  {"id": 12, "name": "Pork", "price": 6.99, "type": "meat"},
  {"id": 13, "name": "Bread", "price": 2.35, "type": "grain"},
  {"id": 14, "name": "Rice", "price": 1.00, "type": "grain"},
  {"id": 15, "name": "Pasta", "price": 1.75, "type": "grain"},
  {"id": 16, "name": "Eggs", "price": 3.99, "type": "other"},
  {"id": 17, "name": "Cereal", "price": 4.49, "type": "other"},
  {"id": 18, "name": "Coffee", "price": 11.99, "type": "other"},
  {"id": 19, "name": "Tea", "price": 6.99, "type": "other"},
  {"id": 20, "name": "Sugar", "price": 2.49, "type": "other"},
  {"id": 21, "name": "Salt", "price": 1.99, "type": "other"},
  {"id": 22, "name": "Pepper", "price": 2.99, "type": "other"},
  {"id": 23, "name": "Soy Sauce", "price": 3.49, "type": "other"},
  {"id": 24, "name": "Ketchup", "price": 2.99, "type": "other"},
  {"id": 25, "name": "Mustard", "price": 2.49, "type": "other"}
];

void main() {
  test('Get of Amount', () {
    expect(getAmount(products), 25);
  });
  test('Get of Total', () {
    expect(getTotal(products), 83.51999999999998);
  });
  test('Get of Amount Fruits', () {
    expect(getAmountFruits(products), 3);
  });
  test('Get of Total Prices Fruits', () {
    expect(getTotalPricesFruits(products), 4.59);
  });

  test('Get of Amount Vegetables', () {
    expect(getAmountVegetables(products), 3);
  });

  test('Get of Total Prices Vegetables', () {
    expect(getTotalPricesVegetables(products), 3.99);
  });

  test('Get of Amount Dairy', () {
    expect(getAmountDairy(products), 3);
  });

  test('Get of Total Prices Dairy', () {
    expect(getTotalPricesDairy(products), 7.970000000000001);
  });
  test('Get of Amount Meat', () {
    expect(getAmountMeat(products), 3);
  });
  test('Get of Total Prices Meat', () {
    expect(getTotalPricesMeat(products), 17.97);
  });
  test('Get most expensive', () {
    expect(getMostExpensive(products), 'Coffee');
  });
  test('Get amount list', () {
    expect(getAmount(products), 25);
  });
  test('Get total prices', () {
    expect(getTotalPrices(products), 83.51999999999998);
  });
  test('Get cheapest', () {
    expect(getCheapest(products), 'Carrot');
  });
  test('Get most expensive fruit', () {
    expect(getMostExpensiveFruit(products), 'Orange');
  });
  test('Get cheapest fruit', () {
    expect(getCheapestFruit(products), 'Banana');
  });
  test('get Most Expensive Vegetable', () {
    expect(getMostExpensiveVegetable(products), 'Broccoli');
  });
  test('get Cheapest Vegetable', () {
    expect(getCheapestVegetable(products), 'Carrot');
  });
  test('getMostExpensiveDairy', () {
    expect(getMostExpensiveDairy(products), 'Cheese');
  });
  test('getCheapestDairy', () {
    expect(getCheapestDairy(products), 'Yogurt');
  });
  test('getMostExpensiveMeat', () {
    expect(getMostExpensiveMeat(products), 'Pork');
  });
  test('getCheapestMeat', () {
    expect(getCheapestMeat(products), 'Chicken');
  });
}
