.class Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$2;
.super Ljava/lang/Object;
.source "MultiWindowTrayInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;->sortAppList()V
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
        "Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$2;->this$0:Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;)I
    .locals 5
    .param p1    # Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;
    .param p2    # Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {p1}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;

    check-cast p2, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$2;->compare(Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;Lcom/android/systemui/recent/multiwindowUtils/MultiWindowTrayInfo$LaunchItem;)I

    move-result v0

    return v0
.end method
