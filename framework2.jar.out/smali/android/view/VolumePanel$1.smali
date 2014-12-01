.class Landroid/view/VolumePanel$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0

    iput-object p1, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v4, 0x0

    # getter for: Landroid/view/VolumePanel;->LOGD:Z
    invoke-static {}, Landroid/view/VolumePanel;->access$300()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCoverBroadcastReceiver: onReceive() : intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "VolumePanel"

    const-string v6, "mCoverBroadcastReceiver: Screen OFF "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Landroid/view/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_1

    # getter for: Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Landroid/view/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    # getter for: Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;
    invoke-static {}, Landroid/view/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v5, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v5}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v5}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "Combination"

    const-string v6, "Combination"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v5}, Landroid/view/VolumePanel;->releaseBooster()V

    :cond_2
    iget-object v5, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v5}, Landroid/view/VolumePanel;->access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    iget-object v5, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v5}, Landroid/view/VolumePanel;->onDismissSafeVolumeWarning()V

    :cond_4
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "state"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_8

    :goto_0
    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCoverBroadcastReceiver: EarJack bPluged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_5

    const-string v5, "VolumePanel"

    const-string v6, "EarJack plug-out, remove waring popup on the s view cover"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z
    invoke-static {v5}, Landroid/view/VolumePanel;->access$500(Landroid/view/VolumePanel;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    iget-object v6, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mCoverManager:Lcom/samsung/android/cover/CoverManager;
    invoke-static {v6}, Landroid/view/VolumePanel;->access$700(Landroid/view/VolumePanel;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v6

    # setter for: Landroid/view/VolumePanel;->mCoverType:I
    invoke-static {v5, v6}, Landroid/view/VolumePanel;->access$602(Landroid/view/VolumePanel;I)I

    iget-object v5, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mCoverType:I
    invoke-static {v5}, Landroid/view/VolumePanel;->access$600(Landroid/view/VolumePanel;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_9

    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    iget-object v5, v5, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x1090134

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "visibility"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "type"

    const-string/jumbo v6, "volume"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "remote"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v5, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    iget-object v5, v5, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v5, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    # setter for: Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z
    invoke-static {v5, v4}, Landroid/view/VolumePanel;->access$502(Landroid/view/VolumePanel;Z)Z

    :cond_5
    const-string v4, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v4}, Landroid/view/VolumePanel;->onDismissSafeVolumeWarning()V

    :cond_6
    const-string v4, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    iget-object v4, v4, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->disableSafeMediaVolume()V

    iget-object v4, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v4}, Landroid/view/VolumePanel;->onDismissSafeVolumeWarning()V

    :cond_7
    return-void

    :cond_8
    move v1, v4

    goto/16 :goto_0

    :cond_9
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/view/VolumePanel$1;->this$0:Landroid/view/VolumePanel;

    iget-object v5, v5, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x1090133

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1
.end method
