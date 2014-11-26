.class final Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;


# direct methods
.method constructor <init>(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Started building the heatmap"

    invoke-static {v2, v3}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;->onProgress(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->c(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I

    move-result v3

    mul-int v8, v2, v3

    new-array v9, v8, [F

    new-array v10, v8, [Z

    new-array v11, v8, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->getWidth()F

    move-result v3

    div-float v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->c(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->getHeight()F

    move-result v3

    div-float v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->a()F

    move-result v2

    mul-float v14, v2, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->b()F

    move-result v2

    mul-float v15, v2, v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->getKeys()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    int-to-float v2, v0

    const/high16 v3, 0x42c80000

    div-float v18, v2, v3

    const v3, 0x7f7fffff

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype/samsung/supportlibrary/heatmap/c;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->e()F

    move-result v2

    cmpg-float v6, v2, v3

    if-gez v6, :cond_f

    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    move/from16 v0, v17

    if-ge v5, v0, :cond_2

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype/samsung/supportlibrary/heatmap/c;

    invoke-virtual {v2, v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->g(F)V

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    move/from16 v0, v17

    if-ge v3, v0, :cond_a

    :try_start_0
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype/samsung/supportlibrary/heatmap/c;

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->c()F

    move-result v5

    mul-float v6, v5, v12

    invoke-virtual {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->d()F

    move-result v5

    mul-float v7, v5, v13

    const/4 v5, 0x0

    sub-float v19, v6, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    const/4 v5, 0x0

    sub-float v20, v7, v15

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I

    move-result v20

    add-float/2addr v6, v14

    float-to-int v6, v6

    move/from16 v0, v20

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->c(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I

    move-result v20

    add-float/2addr v7, v15

    float-to-int v7, v7

    move/from16 v0, v20

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v20

    sub-int v21, v6, v19

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/4 v6, 0x0

    :goto_4
    move/from16 v0, v21

    if-ge v6, v0, :cond_3

    add-int v7, v6, v19

    int-to-float v7, v7

    div-float/2addr v7, v12

    aput v7, v22, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    move v7, v5

    :goto_5
    move/from16 v0, v20

    if-ge v7, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v5}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->b(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)I

    move-result v5

    mul-int/2addr v5, v7

    add-int v6, v5, v19

    int-to-float v5, v7

    div-float v23, v5, v13

    const/4 v5, 0x0

    :goto_6
    move/from16 v0, v21

    if-ge v5, v0, :cond_6

    aget v24, v22, v5

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Lcom/touchtype/samsung/supportlibrary/heatmap/c;->a(FF)F

    move-result v24

    aget-boolean v25, v10, v6

    if-eqz v25, :cond_4

    aget v25, v9, v6

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v24

    aput v24, v9, v6

    :goto_7
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_4
    aput v24, v9, v6

    const/16 v24, 0x1

    aput-boolean v24, v10, v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Building the heatmap has been interrupted"

    invoke-static {v2, v3}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v5

    if-nez v2, :cond_d

    const/4 v3, 0x1

    move v4, v3

    :goto_9
    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v3

    :goto_a
    invoke-interface {v5, v2, v4, v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;->onComplete(ZZLcom/touchtype/samsung/supportlibrary/heatmap/HeatMap;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    :cond_6
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_5

    :cond_7
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v2

    if-eqz v2, :cond_9

    int-to-float v2, v3

    div-float v2, v2, v18

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v5}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;->onProgress(I)V

    :cond_9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v8, :cond_c

    aget-boolean v3, v10, v2

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    aget v5, v9, v2

    invoke-static {v3, v5}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;F)I

    move-result v3

    aput v3, v11, v2

    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_b
    const/high16 v3, -0x1000000

    aput v3, v11, v2

    goto :goto_c

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;

    move-result-object v2

    const/16 v3, 0x64

    invoke-interface {v2, v3}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapProgressListener;->onProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder$1;->a:Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;

    invoke-static {v2}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->d(Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;)Lcom/touchtype/samsung/supportlibrary/heatmap/a;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->a([I)V

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMapBuilder;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Finished building the heatmap"

    invoke-static {v2, v3}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x1

    goto/16 :goto_8

    :cond_d
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_9

    :cond_e
    const/4 v3, 0x0

    goto :goto_a

    :cond_f
    move v2, v3

    goto/16 :goto_1
.end method
