.class final Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;
.super Ljava/lang/Object;
.source "SurfaceWidgetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SurfaceWidgetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceWidgetInfoInstances"
.end annotation


# instance fields
.field private mInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNextInstance:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mNextInstance:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mInstances:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addInstance(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->instanceExists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mInstances:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mNextInstance:I

    if-lt p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mNextInstance:I

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method createNextInstance()I
    .locals 3

    iget v0, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mNextInstance:I

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mInstances:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mNextInstance:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mNextInstance:I

    return v0
.end method

.method getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method instanceExists(I)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mInstances:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeInstance(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mInstances:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mInstances:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->mInstances:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
