.class Lcom/android/mms/help/AirButtonMainActivity$5;
.super Ljava/lang/Object;
.source "AirButtonMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/AirButtonMainActivity;->hideInfoBubble(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/AirButtonMainActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AirButtonMainActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/AirButtonMainActivity$5;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iput-object p2, p0, Lcom/android/mms/help/AirButtonMainActivity$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
