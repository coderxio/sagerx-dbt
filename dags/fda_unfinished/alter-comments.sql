/* fda_unfinished_product */
COMMENT ON COLUMN datasource.fda_unfinished_product.productid IS 'ProductID is a concatenation of the NDCproduct code and SPL documentID. It is included to help prevent duplicate rows from appearing when joining the product and package files together. It has no regulatory value or significance.';
COMMENT ON COLUMN datasource.fda_unfinished_product.productndc IS 'The labeler code and product code segments of the National Drug Code number, separated by a hyphen. Asterisks are no longer used or included within the product code segment to indicate certain configurations of the NDC.  www.fda.gov/edrls under Structured Product Labeling Resources.';
COMMENT ON COLUMN datasource.fda_unfinished_product.producttypename IS 'Indicates the type of product, such as Human Prescription Drug or Human OTC Drug. This data element corresponds to the “Document Type” of the SPL submission for the listing. The complete list of codes and translations can be found at';
COMMENT ON COLUMN datasource.fda_unfinished_product.nonproprietaryname IS 'Sometimes called the generic name, this is usually the active ingredient(s) of the product.';
COMMENT ON COLUMN datasource.fda_unfinished_product.dosageformname IS 'The translation of the DosageForm Code submitted by the firm. The complete list of codes and translations can be found www.fda.gov/edrls under Structured Product Labeling Resources.';
COMMENT ON COLUMN datasource.fda_unfinished_product.startmarketingdate IS 'This is the date that the labeler indicates was the start of its marketing of the drug product.';
COMMENT ON COLUMN datasource.fda_unfinished_product.endmarketingdate IS 'This is the date the product will no longer be available on the market. If a product is no longer being manufactured, in most cases, the FDA recommends firms use the expiration date of the last lot produced as the EndMarketingDate, to reflect the potential for drug product to remain available after manufacturing has ceased. Products that are the subject of ongoing manufacturing will not ordinarily have any EndMarketingDate. Products with a value in the EndMarketingDate will be removed from the NDC Directory when the EndMarketingDate is reached.';
COMMENT ON COLUMN datasource.fda_unfinished_product.labelername IS 'Name of Company corresponding to the labeler code segment of the ProductNDC.';
COMMENT ON COLUMN datasource.fda_unfinished_product.substancename IS 'This is the active ingredient list. Each ingredient name is the preferred term of the UNII code submitted.';
COMMENT ON COLUMN datasource.fda_unfinished_product.active_numerator_strength IS 'These are the strength values (to be used with units below) of each active ingredient, listed in the same order as the SubstanceName field above.';
COMMENT ON COLUMN datasource.fda_unfinished_product.active_ingred_unit IS 'These are the units to be used with the strength values above, listed in the same order as the SubstanceName and SubstanceNumber (ActiveNumeratorStrength).';
COMMENT ON COLUMN datasource.fda_unfinished_product.deaschedule IS 'This is the assigned DEA Schedule number as reported by the labeler. Values are CI, CII, CIII, CIV, and CV.';
COMMENT ON COLUMN datasource.fda_unfinished_product.listing_record_certified_through IS 'This is the date when the listing record will expire if not updated or certified by the firm.';

/* fda_unfinished_package */
COMMENT ON COLUMN datasource.fda_unfinished_package.productid IS 'ProductID is a concatenation of the NDCproduct code and SPL documentID. It is included to help prevent duplicate rows from appearing when joining the product and package files together. It has no regulatory value or significance.';
COMMENT ON COLUMN datasource.fda_unfinished_package.productndc IS 'The labeler code and product code segments of the National Drug Code number, separated by a hyphen. Asterisks are no longer used or included within the product code segment to indicate certain configurations of the NDC.';
COMMENT ON COLUMN datasource.fda_unfinished_package.ndcpackagecode IS 'The labeler code, product code, and package code segments of the National Drug Code number, separated by hyphens. Asterisks are no longer used or included within the product and package code segments to indicate certain configurations of the NDC.';
COMMENT ON COLUMN datasource.fda_unfinished_package.packagedescription IS 'A description of the size and type of packaging in sentence form. Multilevel packages will have the descriptions concatenated together. For example: 4 BOTTLES in 1 CARTON/100 TABLETS in 1 BOTTLE.';
COMMENT ON COLUMN datasource.fda_unfinished_package.startmarketingdate IS 'This is the date that the labeler indicates was the start of its marketing of the drug product.';
COMMENT ON COLUMN datasource.fda_unfinished_package.endmarketingdate IS 'This is the date the product will no longer be available on the market. If a product is no longer being manufactured, in most cases, the FDA recommends firms use the expiration date of the last lot produced as the EndMarketingDate, to reflect the potential for drug product to remain available after manufacturing has ceased. Products that are the subject of ongoing manufacturing will not ordinarily have any EndMarketingDate. Products with a value in the EndMarketingDate will be removed from the NDC Directory when the EndMarketingDate is reached.';
