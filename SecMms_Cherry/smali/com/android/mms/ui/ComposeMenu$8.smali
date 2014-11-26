.class Lcom/android/mms/ui/ComposeMenu$8;
.super Ljava/lang/Object;
.source "ComposeMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMenu;->confirmRegisterAsSpamNumber(Lcom/android/mms/ui/ComposeMenu$DeleteSpamThreadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMenu;

.field final synthetic val$checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/ComposeMenu$DeleteSpamThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/ComposeMenu$DeleteSpamThreadListener;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu$8;->this$0:Lcom/android/mms/ui/ComposeMenu;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMenu$8;->val$listener:Lcom/android/mms/ui/ComposeMenu$DeleteSpamThreadListener;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMenu$8;->val$checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu$8;->val$listener:Lcom/android/mms/ui/ComposeMenu$DeleteSpamThreadListener;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$8;->val$checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMenu$DeleteSpamThreadListener;->setDeleteSpamThread(Z)V

    return-void
.end method
