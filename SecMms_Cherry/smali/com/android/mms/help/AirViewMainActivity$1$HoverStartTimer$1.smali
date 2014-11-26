.class Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer$1;
.super Ljava/lang/Object;
.source "AirViewMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer$1;->this$2:Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/android/mms/help/AirViewMainActivity;->mHasHovered:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer$1;->this$2:Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;

    iget-object v0, v0, Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;->this$1:Lcom/android/mms/help/AirViewMainActivity$1;

    iget-object v0, v0, Lcom/android/mms/help/AirViewMainActivity$1;->this$0:Lcom/android/mms/help/AirViewMainActivity;

    invoke-static {v0}, Lcom/android/mms/help/AirViewMainActivity;->hideInfoBubble(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
