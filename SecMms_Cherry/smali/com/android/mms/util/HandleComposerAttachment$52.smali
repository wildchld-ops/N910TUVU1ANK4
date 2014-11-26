.class Lcom/android/mms/util/HandleComposerAttachment$52;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->createDataPopup(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$sharedPreferenceKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$52;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$52;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/mms/util/HandleComposerAttachment$52;->val$sharedPreferenceKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/util/HandleComposerAttachment$52;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$52;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$52;->val$sharedPreferenceKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/util/HandleComposerAttachment$52;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDoNotShowAgain:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/mms/util/HandleComposerAttachment;->access$2200(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$52;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$52;->val$mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->createPermissionPopup(Landroid/content/Context;)V

    return-void
.end method
