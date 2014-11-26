.class Lcom/android/mms/ui/CbConfigPreferenceActivity$1;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v0, v0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$000(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I
    invoke-static {v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$100(Lcom/android/mms/ui/CbConfigPreferenceActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->changeCBMessgesOption(Landroid/content/Context;ZI)Z

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$000(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/mms/ui/CbConfigPreferenceActivity;->setElementEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$400(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$300(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/view/View$OnCreateContextMenuListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$400(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method
