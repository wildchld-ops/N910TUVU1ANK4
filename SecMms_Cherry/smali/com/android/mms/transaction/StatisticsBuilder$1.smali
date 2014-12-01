.class Lcom/android/mms/transaction/StatisticsBuilder$1;
.super Ljava/lang/Object;
.source "StatisticsBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/StatisticsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/android/mms/transaction/StatisticsBuilder$Field;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/StatisticsBuilder;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/StatisticsBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/StatisticsBuilder$1;->this$0:Lcom/android/mms/transaction/StatisticsBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/mms/transaction/StatisticsBuilder$Field;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/mms/transaction/StatisticsBuilder$Field;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/mms/transaction/StatisticsBuilder$Field;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/StatisticsBuilder$1;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method
