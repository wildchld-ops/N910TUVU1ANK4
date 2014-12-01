.class Lcom/diotek/ime/implement/setting/ACDeleteLanguages$6;
.super Ljava/lang/Object;
.source "ACDeleteLanguages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->makeDeletePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$6;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    # setter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletePopup:Z
    invoke-static {v1}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$702(Z)Z

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeleteDlg:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$800()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return v1
.end method
