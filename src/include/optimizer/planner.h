/*-------------------------------------------------------------------------
 *
 * planner.h
 *	  prototypes for planner.c.
 *
 *
 * Portions Copyright (c) 1996-2014, PostgreSQL Global Development Group
 * Portions Copyright (c) 1994, Regents of the University of California
 * Portions Copyright (c) 2013-2015, PipelineDB
 *
 * src/include/optimizer/planner.h
 *
 *-------------------------------------------------------------------------
 */
#ifndef PLANNER_H
#define PLANNER_H

#include "nodes/plannodes.h"
#include "nodes/relation.h"
#include "parser/parsetree.h"

/* Hook for plugins to get control in planner() */
typedef PlannedStmt *(*planner_hook_type) (Query *parse,
													   int cursorOptions,
												  ParamListInfo boundParams);
extern PGDLLIMPORT planner_hook_type planner_hook;


extern PlannedStmt *planner(Query *parse, int cursorOptions,
		ParamListInfo boundParams);
extern PlannedStmt *standard_planner(Query *parse, int cursorOptions,
				 ParamListInfo boundParams);

extern Plan *subquery_planner(PlannerGlobal *glob, Query *parse,
				 PlannerInfo *parent_root,
				 bool hasRecursion, double tuple_fraction,
				 PlannerInfo **subroot);

extern void add_tlist_costs_to_plan(PlannerInfo *root, Plan *plan,
						List *tlist);

extern bool is_dummy_plan(Plan *plan);

extern Expr *expression_planner(Expr *expr);

extern Expr *preprocess_phv_expression(PlannerInfo *root, Expr *expr);

extern int	get_grouping_column_index(Query *parse, TargetEntry *tle);

extern bool plan_cluster_use_sort(Oid tableOid, Oid indexOid);

#endif   /* PLANNER_H */
