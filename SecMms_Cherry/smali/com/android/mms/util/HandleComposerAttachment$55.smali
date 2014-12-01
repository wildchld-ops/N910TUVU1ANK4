.class Lcom/android/mms/util/HandleComposerAttachment$55;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->createPermissionPopup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$55;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$55;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$55;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LocationAllowPermission"

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$55;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDoNotShowAgain2:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$2300(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$55;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->runnableAfterDialog:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$2400(Lcom/android/mms/util/HandleComposerAttachment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$55;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->runnableAfterDialog:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$2400(Lcom/android/mms/util/HandleComposerAttachment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
