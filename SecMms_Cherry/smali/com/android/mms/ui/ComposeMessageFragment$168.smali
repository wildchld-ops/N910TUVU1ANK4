.class Lcom/android/mms/ui/ComposeMessageFragment$168;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initToButtonLayoutForGroup(Lcom/android/mms/data/ContactList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$toButton:Lcom/android/mms/ui/ToButton;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ToButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$168;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$168;->val$toButton:Lcom/android/mms/ui/ToButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$168;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$168;->val$toButton:Lcom/android/mms/ui/ToButton;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->onClickToButton(Lcom/android/mms/ui/ToButton;Landroid/view/View;)V
    invoke-static {v0, v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14300(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ToButton;Landroid/view/View;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method
