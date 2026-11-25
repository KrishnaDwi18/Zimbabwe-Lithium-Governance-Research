# Database dictionary

Generated from the existing SQLite database using `sqlite_master` and `PRAGMA table_info`. Raw tables and their views are alternative representations, not additive observations. Row counts are snapshot counts. Declared types and constraints are recorded in the CSV; views may have no declared type.

## Core relationships

- `projects.project_id` → `mine_observations.project_id` (one-to-many).
- `evidence_records.record_key` → `mine_observations.record_key` (unique) and `evidence_sources.record_key` (one-to-many).
- `sources.source_id` → `evidence_sources.source_id` (one-to-many).
- `workbook_manifest.sheet_name` → `evidence_records.sheet_name`.

Use `period_original` for reporting precision; `year` is a derived convenience field. `value` must be interpreted with `unit`, `scope`, `observation_status`, `analysis_gate` and `caveat`. `record_key` traces a workbook row; `observation_id` identifies a corporate observation. `source_linkage` indicates traceability, not factual confirmation.

## Inventory

| Object | Type | Rows |
|---|---|---:|
| `evidence_records` | table | 1166 |
| `evidence_sources` | table | 1162 |
| `metadata` | table | 4 |
| `mine_observations` | table | 152 |
| `projects` | table | 4 |
| `raw_annual_export_earnings` | table | 9 |
| `raw_archive_preservation` | table | 19 |
| `raw_climate_justice` | table | 45 |
| `raw_comtrade_world` | table | 19 |
| `raw_corporate_qualitative_evidence` | table | 39 |
| `raw_discourse` | table | 22 |
| `raw_duplicate_decisions` | table | 1 |
| `raw_environmental_data` | table | 61 |
| `raw_environmental_law` | table | 11 |
| `raw_export_reporting_vintages` | table | 12 |
| `raw_fiscal_audits` | table | 7 |
| `raw_fiscal_instruments` | table | 9 |
| `raw_historical_governance_evidence` | table | 6 |
| `raw_historical_source_links` | table | 772 |
| `raw_legacy_citations` | table | 39 |
| `raw_mine_compliance` | table | 44 |
| `raw_mine_observations` | table | 152 |
| `raw_mining_royalties` | table | 6 |
| `raw_monthly_trade` | table | 414 |
| `raw_national_production` | table | 12 |
| `raw_national_reported_metrics` | table | 68 |
| `raw_new_qualitative_evidence` | table | 8 |
| `raw_outstanding_evidence` | table | 13 |
| `raw_policies` | table | 13 |
| `raw_policy_audits` | table | 13 |
| `raw_policy_implementation` | table | 8 |
| `raw_projects` | table | 4 |
| `raw_record_linkage_audit` | table | 1166 |
| `raw_review_queue` | table | 23 |
| `raw_source_id_crosswalk` | table | 277 |
| `raw_source_registry` | table | 318 |
| `raw_spodumene_secondary` | table | 2 |
| `raw_start_here` | table | 52 |
| `raw_suppressed_mine_records` | table | 4 |
| `raw_trade_context` | table | 4 |
| `raw_trade_partners` | table | 89 |
| `raw_trade_value_revisions` | table | 33 |
| `raw_usgs_reporting_vintages` | table | 24 |
| `raw_usgs_reserves` | table | 12 |
| `raw_usgs_yearbook_vintages` | table | 60 |
| `raw_web_sources` | table | 11 |
| `sources` | table | 329 |
| `unresolved_sources` | table | 13 |
| `workbook_manifest` | table | 41 |
| `annual_export_earnings` | view | 9 |
| `archive_preservation` | view | 19 |
| `climate_justice` | view | 45 |
| `comtrade_world` | view | 19 |
| `corporate_qualitative_evidence` | view | 39 |
| `discourse` | view | 22 |
| `duplicate_decisions` | view | 1 |
| `environmental_data` | view | 61 |
| `environmental_law` | view | 11 |
| `export_reporting_vintages` | view | 12 |
| `fiscal_audits` | view | 7 |
| `fiscal_instruments` | view | 9 |
| `historical_governance_evidence` | view | 6 |
| `historical_source_links` | view | 772 |
| `legacy_citations` | view | 39 |
| `mine_compliance` | view | 44 |
| `mine_with_sources` | view | 155 |
| `mining_royalties` | view | 6 |
| `monthly_trade` | view | 414 |
| `national_production` | view | 12 |
| `national_reported_metrics` | view | 68 |
| `new_qualitative_evidence` | view | 8 |
| `outstanding_evidence` | view | 13 |
| `policies` | view | 13 |
| `policy_audits` | view | 13 |
| `policy_implementation` | view | 8 |
| `record_linkage_audit` | view | 1166 |
| `review_queue` | view | 23 |
| `source_id_crosswalk` | view | 277 |
| `source_registry` | view | 318 |
| `spodumene_secondary` | view | 2 |
| `start_here` | view | 52 |
| `suppressed_mine_records` | view | 4 |
| `trade_context` | view | 4 |
| `trade_partners` | view | 89 |
| `trade_value_revisions` | view | 33 |
| `usgs_reporting_vintages` | view | 24 |
| `usgs_reserves` | view | 12 |
| `usgs_yearbook_vintages` | view | 60 |
| `web_sources` | view | 11 |
