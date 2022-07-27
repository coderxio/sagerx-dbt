/* flatfile.rxnorm_clinical_product_to_ndc */
CREATE OR REPLACE VIEW flatfile.rxnorm_clinical_product_to_ndc
AS 
    SELECT
        rcp.rxcui as clinical_product_rxcui
        , rcp.name as clinical_product_name
        , rcp.tty as clinical_product_tty
        , rcpc.rxcui as clinical_product_component_rxcui
        , rcpc.name as clinical_product_compnent_name
        , rcpc.tty as clinical_product_component_tty
        , rdf.rxcui as dose_form_rxcui
        , rdf.name as dose_form_name
        , rdf.tty as dose_form_tty
        , ri.rxcui as ingredient_rxcui
        , ri.name as ingredient_name
        , ri.tty as ingredient_tty
        , rn.brand_product_rxcui
        , rn.ndc
        , rcp.active
        , rcp.prescribable
    FROM staging.rxnorm_clinical_product rcp 
    LEFT JOIN staging.rxnorm_clinical_product_component_link rcpcl 
        ON rcp.rxcui = rcpcl.clinical_product_rxcui 
    LEFT JOIN staging.rxnorm_clinical_product_component rcpc 
        ON rcpcl.clinical_product_component_rxcui = rcpc.rxcui 
    LEFT JOIN staging.rxnorm_dose_form rdf 
        ON rcpc.dose_form_rxcui = rdf.rxcui 
    LEFT JOIN staging.rxnorm_ingredient ri 
        ON rcpc.ingredient_rxcui = ri.rxcui 
    LEFT JOIN staging.rxnorm_ndc rn
        ON rcp.rxcui = rn.clinical_product_rxcui
