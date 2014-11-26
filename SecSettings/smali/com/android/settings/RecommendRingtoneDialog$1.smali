.class Lcom/android/settings/RecommendRingtoneDialog$1;
.super Ljava/lang/Object;
.source "RecommendRingtoneDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RecommendRingtoneDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RecommendRingtoneDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/RecommendRingtoneDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    # setter for: Lcom/android/settings/RecommendRingtoneDialog;->mSelectedPosition:I
    invoke-static {v0, p2}, Lcom/android/settings/RecommendRingtoneDialog;->access$002(Lcom/android/settings/RecommendRingtoneDialog;I)I

    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    # getter for: Lcom/android/settings/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/settings/RecommendRingtoneDialog$RecommendAdapter;
    invoke-static {v0}, Lcom/android/settings/RecommendRingtoneDialog;->access$100(Lcom/android/settings/RecommendRingtoneDialog;)Lcom/android/settings/RecommendRingtoneDialog$RecommendAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    # getter for: Lcom/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/settings/RecommendRingtoneDialog;->access$200(Lcom/android/settings/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    # getter for: Lcom/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/settings/RecommendRingtoneDialog;->access$200(Lcom/android/settings/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    # invokes: Lcom/android/settings/RecommendRingtoneDialog;->requestAudioFocus()V
    invoke-static {v0}, Lcom/android/settings/RecommendRingtoneDialog;->access$300(Lcom/android/settings/RecommendRingtoneDialog;)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    iget-object v1, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    # getter for: Lcom/android/settings/RecommendRingtoneDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/RecommendRingtoneDialog;->access$400(Lcom/android/settings/RecommendRingtoneDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    # getter for: Lcom/android/settings/RecommendRingtoneDialog;->ringtoneType:I
    invoke-static {v2}, Lcom/android/settings/RecommendRingtoneDialog;->access$500(Lcom/android/settings/RecommendRingtoneDialog;)I

    move-result v2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    # setter for: Lcom/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0, v1}, Lcom/android/settings/RecommendRingtoneDialog;->access$202(Lcom/android/settings/RecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    # getter for: Lcom/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/settings/RecommendRingtoneDialog;->access$200(Lcom/android/settings/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    iget-object v1, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    # getter for: Lcom/android/settings/RecommendRingtoneDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/RecommendRingtoneDialog;->access$400(Lcom/android/settings/RecommendRingtoneDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    # getter for: Lcom/android/settings/RecommendRingtoneDialog;->offset:I
    invoke-static {v2}, Lcom/android/settings/RecommendRingtoneDialog;->access$600(Lcom/android/settings/RecommendRingtoneDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    # getter for: Lcom/android/settings/RecommendRingtoneDialog;->ringtoneType:I
    invoke-static {v3}, Lcom/android/settings/RecommendRingtoneDialog;->access$500(Lcom/android/settings/RecommendRingtoneDialog;)I

    move-result v3

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    # setter for: Lcom/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0, v1}, Lcom/android/settings/RecommendRingtoneDialog;->access$202(Lcom/android/settings/RecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/android/settings/RecommendRingtoneDialog$1;->this$0:Lcom/android/settings/RecommendRingtoneDialog;

    # getter for: Lcom/android/settings/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/settings/RecommendRingtoneDialog;->access$200(Lcom/android/settings/RecommendRingtoneDialog;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
