.class Landroid/content/res/Resources$CRunnable_openmp;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CRunnable_openmp"
.end annotation


# instance fields
.field dr:Landroid/graphics/drawable/Drawable;

.field file:Ljava/lang/String;

.field isColorDrawable:Z

.field final key:J

.field res:Landroid/content/res/Resources;

.field final synthetic this$0:Landroid/content/res/Resources;

.field value:Landroid/util/TypedValue;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/content/res/Resources;JZ)V
    .locals 1

    iput-object p1, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Resources$CRunnable_openmp;->dr:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iput-object p3, p0, Landroid/content/res/Resources$CRunnable_openmp;->file:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/res/Resources$CRunnable_openmp;->res:Landroid/content/res/Resources;

    iput-wide p5, p0, Landroid/content/res/Resources$CRunnable_openmp;->key:J

    iput-boolean p7, p0, Landroid/content/res/Resources$CRunnable_openmp;->isColorDrawable:Z

    return-void
.end method


# virtual methods
.method public doOpenMP()V
    .locals 10

    const-wide/16 v8, 0x2000

    iget-boolean v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->isColorDrawable:Z

    if-eqz v4, :cond_7

    # getter for: Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    invoke-static {}, Landroid/content/res/Resources;->access$100()Landroid/util/LongSparseArray;

    move-result-object v4

    iget-wide v5, p0, Landroid/content/res/Resources$CRunnable_openmp;->key:J

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    :goto_0
    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    # getter for: Landroid/content/res/Resources;->resListItems:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    # getter for: Landroid/content/res/Resources;->resListItems:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    # getter for: Landroid/content/res/Resources;->resListItems:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iget-object v4, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iget-object v4, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ".png"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iget-object v4, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ".pkm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iget-object v4, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ".qmg"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    # getter for: Landroid/content/res/Resources;->resListItems:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_8

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->dr:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_1
    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->dr:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->dr:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iget v5, v5, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->dr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    iget-object v5, v4, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-boolean v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->isColorDrawable:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    iget-object v4, v4, Landroid/content/res/Resources;->mALCDC:Landroid/util/LongSparseArray;

    iget-wide v6, p0, Landroid/content/res/Resources$CRunnable_openmp;->key:J

    invoke-virtual {v4, v6, v7, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    # getter for: Landroid/content/res/Resources;->resListItems:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    # getter for: Landroid/content/res/Resources;->resListItems:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_2
    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    # getter for: Landroid/content/res/Resources;->resListItems:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    # getter for: Landroid/content/res/Resources;->resListItems:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    # getter for: Landroid/content/res/Resources;->resListItems:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v6, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_6
    return-void

    :cond_7
    # getter for: Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;
    invoke-static {}, Landroid/content/res/Resources;->access$200()[Landroid/util/LongSparseArray;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    # getter for: Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;
    invoke-static {v5}, Landroid/content/res/Resources;->access$300(Landroid/content/res/Resources;)Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    aget-object v4, v4, v5

    iget-wide v5, p0, Landroid/content/res/Resources$CRunnable_openmp;->key:J

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :cond_8
    iget-boolean v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->isColorDrawable:Z

    if-eqz v4, :cond_9

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget-object v5, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iget v5, v5, Landroid/util/TypedValue;->data:I

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->dr:Landroid/graphics/drawable/Drawable;

    :cond_9
    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->dr:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->file:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->file:Ljava/lang/String;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->file:Ljava/lang/String;

    const-string v5, ".pkm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->file:Ljava/lang/String;

    const-string v5, ".qmg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_a
    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->file:Ljava/lang/String;

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_4
    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    iget-object v4, v4, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget-object v5, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iget v5, v5, Landroid/util/TypedValue;->assetCookie:I

    iget-object v6, p0, Landroid/content/res/Resources$CRunnable_openmp;->file:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->res:Landroid/content/res/Resources;

    iget-object v5, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iget-object v6, p0, Landroid/content/res/Resources$CRunnable_openmp;->file:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v4, v5, v2, v6, v7}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->dr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/Resources$CRunnable_openmp;->file:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from drawable resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/Resources$CRunnable_openmp;->value:Landroid/util/TypedValue;

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :cond_b
    :try_start_5
    iget-object v4, p0, Landroid/content/res/Resources$CRunnable_openmp;->this$0:Landroid/content/res/Resources;

    iget-object v4, v4, Landroid/content/res/Resources;->mALDC:Landroid/util/LongSparseArray;

    iget-wide v6, p0, Landroid/content/res/Resources$CRunnable_openmp;->key:J

    invoke-virtual {v4, v6, v7, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4
.end method
