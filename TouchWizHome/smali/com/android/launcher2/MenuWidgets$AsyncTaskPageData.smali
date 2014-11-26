.class Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;
.super Ljava/lang/Object;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncTaskPageData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;
    }
.end annotation


# instance fields
.field final cellHeight:I

.field final cellWidth:I

.field final doInBackgroundCallback:Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;

.field generatedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final layout:Lcom/android/launcher2/PagedViewGridLayout;

.field final page:I

.field final postExecuteCallback:Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;IILcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/PagedViewGridLayout;
    .param p2    # I
    .param p4    # I
    .param p5    # I
    .param p6    # Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;
    .param p7    # Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/PagedViewGridLayout;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;II",
            "Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;",
            "Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    iput-object p3, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->items:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    iput p4, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellWidth:I

    iput p5, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellHeight:I

    iput-object p6, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->doInBackgroundCallback:Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;

    iput-object p7, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->postExecuteCallback:Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;

    return-void
.end method


# virtual methods
.method cleanup(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method
