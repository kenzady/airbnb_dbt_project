import os

from dagster import Definitions
from dagster_dbt import DbtCliResource

from .assets import airbnb_project_dbt_assets, airbnb_project_partitioned_dbt_assets
from .constants import dbt_project_dir
from .schedules import schedules

defs = Definitions(
    assets=[airbnb_project_dbt_assets, airbnb_project_partitioned_dbt_assets],
    schedules=schedules,
    resources={
        "dbt": DbtCliResource(project_dir=os.fspath(dbt_project_dir)),
    },
)