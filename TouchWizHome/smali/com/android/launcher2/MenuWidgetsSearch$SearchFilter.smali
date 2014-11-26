.class Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;
.super Ljava/lang/Object;
.source "MenuWidgetsSearch.java"

# interfaces
.implements Lcom/android/launcher2/MenuWidgets$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgetsSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgetsSearch;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgetsSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuWidgetsSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterWidgets(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuWidgetsSearch;

    # getter for: Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;
    invoke-static {v4}, Lcom/android/launcher2/MenuWidgetsSearch;->access$000(Lcom/android/launcher2/MenuWidgetsSearch;)Landroid/widget/SearchView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuWidgetsSearch;

    # getter for: Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v4}, Lcom/android/launcher2/MenuWidgetsSearch;->access$100(Lcom/android/launcher2/MenuWidgetsSearch;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher2/MenuWidgets;->setSearchString(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v3}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
