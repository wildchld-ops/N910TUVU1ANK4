.class final Lcom/android/launcher2/MenuWidgets$WidgetComparator;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WidgetComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher2/AvailableWidget;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetComparator;->mCollator:Ljava/text/Collator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuWidgets$1;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/MenuWidgets$1;

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets$WidgetComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher2/AvailableWidget;Lcom/android/launcher2/AvailableWidget;)I
    .locals 3
    .param p1    # Lcom/android/launcher2/AvailableWidget;
    .param p2    # Lcom/android/launcher2/AvailableWidget;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {p1}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher2/AvailableWidget;

    check-cast p2, Lcom/android/launcher2/AvailableWidget;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets$WidgetComparator;->compare(Lcom/android/launcher2/AvailableWidget;Lcom/android/launcher2/AvailableWidget;)I

    move-result v0

    return v0
.end method

.method public updateCollator()V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetComparator;->mCollator:Ljava/text/Collator;

    return-void
.end method
