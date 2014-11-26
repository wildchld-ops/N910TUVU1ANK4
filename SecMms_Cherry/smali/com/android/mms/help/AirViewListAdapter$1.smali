.class Lcom/android/mms/help/AirViewListAdapter$1;
.super Ljava/lang/Object;
.source "AirViewListAdapter.java"

# interfaces
.implements Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/help/AirViewListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/AirViewListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AirViewListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/AirViewListAdapter$1;->this$0:Lcom/android/mms/help/AirViewListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/help/AirViewListAdapter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/help/AirViewListAdapter$1$1;-><init>(Lcom/android/mms/help/AirViewListAdapter$1;Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
