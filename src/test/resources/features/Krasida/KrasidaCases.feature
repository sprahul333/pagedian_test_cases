Feature:Passion Flow Approval

  Background:
    Given Launch the Application

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: The cashier submits an application for the Krasida product with a 6-month term, estimated value between 50 thousand and 20 million
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Pinca"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_1_to_7
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount | Tenure  | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1005241522 | 10000000    | 6 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: The cashier submits an application for the Krasida product with a 6-month term and an estimated value between 20 million and 100 million
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Pinca"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_8_to_15
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount | Tenure  | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1005241522 | 25000000    | 6 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: The cashier submits an application for the Krasida product with a 6-month term and an estimated value between 100 million and 200 million
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_16_To_22
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount | Tenure  | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1005241522 | 22395900    | 6 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |


  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: The cashier submits an application for the Krasida product with a 6-month term and an estimated value between 200 million and 500 million
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_23_To_32
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount | Tenure  | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1005241522 | 44791700    | 6 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline:  The cashier submits an application for the Krasida (04) product with a 6-month term and an estimated value range of 500 million to 1 billion.
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_33_To_43
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount | Tenure  | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1005241522  | 44791700    | 6 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: The cashier submits an application for the Krasida (04) product with a 6-month term and an estimated value range of over 1 billion
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_44_To_55
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount | Tenure  | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1005241522 | 215000000   | 6 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: The cashier submits an application for the Krasida (04) product with a 12-month term and an estimated value range of 50 thousand to 20 million
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_56_to_62
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1021659839 | 95900       | 12 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |


  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: The cashier submits an application for the Krasida (04) product with a 48-month term and an estimated value range of 100 million to 200 million
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_292_to_300
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount  | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1021659839 | 145.75000000 | 48 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: The cashier submits an application for the Krasida (04) product with a 48-month term and an estimated value range of 20 million to 100 million
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_284_to_291
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount  | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1021659839 | 75.250.00000 | 48 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |


  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for a 36-Month Tenor with an Estimated Appraisal Range of Less Than 1 Million [Rupiah].
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_272_to_283
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1021659839 | 850.00000   | 36 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for a 36-Month Tenor with an Estimated Appraisal Range of 500 Million to 1 Billion [Rupiah].
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_261_to_271
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount   | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | Krasida      | Reguler        | 1021659839 | 785.500.00000 | 36 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for a 36-Month Tenor with an Estimated Appraisal Range of 200 Million - 500 Million [Rupiah].
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_251_to_260
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount   | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | Krasida      | Reguler        | 1021659839 | 375.000.00000 | 36 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for a 36-Month Tenor with an Estimated Appraisal Range of 100 Million - 200 Million [Rupiah].
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_242_to_250
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount   | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | Krasida      | Reguler        | 1021659839 | 160.000.00000 | 36 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for a 36-Month Tenor with an Estimated Appraisal Range of 20 Million - 100 Million [Rupiah]
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_234_to_241
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount  | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | Krasida      | Reguler        | 1021659839 | 48.500.00000 | 36 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for a 36-Month Tenor with an Estimated Appraisal Range of 50 Thousand - 20 Million [Rupiah].
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_227_to_233
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount  | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | Krasida      | Reguler        | 1021659839 | 15.750.00000 | 36 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for a 24-Month Tenor with an Estimated Appraisal Range of Greater Than 1 Billion [Rupiah].
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_215_to_226
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount     | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | Krasida      | Reguler        | 1021659839 | 1.250.000.00000 | 24 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for a 24-Month Tenor with an Estimated Appraisal Range of 500 Million to 1 Billion [Rupiah]
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_204_to_214
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount     | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1021659839 | 1.250.000.00000 | 24 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for a 12-Month Tenor with an Estimated Appraisal Range of 20 Million - 100 Million [Rupiah]
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_63_to_70
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount  | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1021659839 | 92.000.00000 | 12 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for a 12-Month Tenor with an Estimated Appraisal Range of 100 Million - 200 Million [Rupiah].
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_71_to_79
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount   | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1021659839 | 135.000.00000 | 12 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |


  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for a 12-Month Tenor with an Estimated Appraisal Range of 200 Million - 500 Million [Rupiah].
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_80_to_89
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount   | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1021659839 | 410.000.00000 | 12 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for a 12-Month Tenor with an Estimated Appraisal Range of 500 Million - 1 Billion [Rupiah]
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_90_to_100
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount   | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1021659839 | 825.000.00000 | 12 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for a 12-Month Tenor with an Estimated Appraisal Range of Greater Than 1 Billion [Rupiah].
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_101_to_112
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount     | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1021659839 | 1.500.000.00000 | 12 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for an 18-Month Tenor with an Estimated Appraisal Range of 50 Thousand - 20 Million [Rupiah].
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_113_to_119
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount  | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1021659839 | 10.500.00000 | 18 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for an 18-Month Tenor with an Estimated Appraisal Range of 20 Million - 100 Million [Rupiah].
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_120_to_127
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount  | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1021659839 | 65.000.00000 | 18 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |

  @RegressionSuite @Banking @GoldLoanApplication @Krasida
  Scenario Outline: Cashier Submits a Krasida Product Application (04) for an 18-Month Tenor with an Estimated Appraisal Range of 100 Million - 200 Million [Rupiah].
    And Login using "Cashier"
    And Navigate to Krasida Product Screen
    And Create a Loan Application
      | Loan Product   | Financing Type   | CIF Number   | Loan Amount   | Tenure   | Rate Of Interest   |
      | <Loan_Product> | <Financing_Type> | <CIF_Number> | <Loan_Amount> | <Tenure> | <Rate_Of_Interest> |

    And Add Collateral Details
      | Entry Category   | Type of Collateral   | Type of Jewellery   | Gold Carat   |
      | <Entry_Category> | <Type_of_Collateral> | <Type of Jewellery> | <Gold Carat> |
    Then Save the loan Applicant Details
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for Internal Review Process
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for carrying the LPBJ Process
    Then Logout from the application
    And Login using "Business Manager"
    Then Approve the Loan Application
    Then Logout from the application
    And Login using "Penkasir"
    Then Approve the Loan Application for the Customer Confirmation process
    Then Logout from the application
    And Login using "Cashier"
    Then Approve the Loan Application to disburse the loan Amount
    Then Logout from the application

    @TC:_Krasida_128_to_136
    Examples:
      | Loan_Product | Financing_Type | CIF_Number | Loan_Amount   | Tenure   | Rate_Of_Interest | Entry_Category | Type_of_Collateral | Type of Jewellery | Gold Carat |
      | KRASIDA      | Reguler        | 1021659839 | 170.500.00000 | 18 Bulan | Tidak            | Barang Kantong | PERHIASAN EMAS     | Cincin            | 22         |
#    Given Cashier on the Micro Submission screen
#    And Cashier input all mandatory data
#    And Cashier clicks the "Save" button
#    And Cashier click "Sure, Continue"
#    And The cashier sees a pop up "Data saved successfully. Reference No.: account_NO"
#    When Estimator on My Tasks menu
#    And Assessor click Application Number to begin the Internal Checking (Internal Review) process
#    And Assessor select in Decision section
#    And Estimator click Save button
#    And The estimator sees apop-up: "Data saved successfully. Reference No.: account_NO"
#    And Estimator on My Tasks menu
#    And Estimator click Application No to be carried out LPBJ process
#    And Estimator click Save button
#    And The estimator sees a pop up "Data saved successfully. Reference No.: account_NO"
#    And Business Manager in My Tasks menu
#    And Business Manager click No. The application that will be carried out is the approval process
#    And Business Manager select the "Approve" decision then click the "Save" button
#    And The Business Manager clicks the "Sure, Continue" button on the confirmation pop up "Are you sure you want to save this data?"
#    And The estimator sees the information "Approval Data Sent To Its Original Unit!" and "Data successfully saved Reference No.:"
#    And Estimator on My Tasks menu
#    And Estimator click Application No to be carried out the Customer Confirmation process
#    And Assessor select Customer Agree on Customer Confirmation
#    And Estimator click Save button
#    And The estimator sees a pop up "Data saved successfully. Reference No.: NO_CONTRAK"
#    And Estimator on My Tasks menu
#    And Estimator click Application No to be carried out the Credit Establishment process
#    And Estimator click Save button
#    And The estimator clicks the "Sure, Continue" button on the confirmation pop up "Are you sure you want to cash out this credit?"
#    And The estimator sees a pop up "Data saved successfully. Reference No.: NO_CONTRAK"
#    When Cashier in My Tasks menu
#    And Cashier click Application No to be disbursed
#    And Cashier click Save button
#    Then The cashier sees a pop up "Data saved successfully, the process of cashing out KRASIDA Micro! Reference:"
#