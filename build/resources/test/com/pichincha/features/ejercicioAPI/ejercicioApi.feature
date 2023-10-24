@REQ_EVA-001 @Prueba1
Feature: Consultar Productos del sistema Fake Store

  @id:1 @ConsultarCarritos @testApi
  Scenario Outline: T-API-EVA-001-CA1- Consultar Productos Item 11
    Given url 'https://fakestoreapi.com/products'
    When method GET
    Then status 200
    And print response
    And match $..rating..rate contains <rate>
    And match $..id contains <id>
    And match $..category contains <category>
    And match $..title contains <title>

    Examples:
      | rate | id | category      | title                                                                          |
      | 4.8  | 11 | "electronics" | 'Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5' |
##And match response.id.productId[4] contains <productoID>
  ##

  Scenario Outline: T-API-EVA-001-CA2- Consultar por categoria
    Given url 'https://fakestoreapi.com/products/category/<categoria>'
    When method GET
    Then status 200
    And print response
    And def responseArray = karate.jsonPath(response, '$')
    And def tamano = karate.sizeOf(responseArray)
    And print tamano
    And match tamano == <cantidad>

    Examples:
      | categoria   | cantidad |
      | electronics | 6       |