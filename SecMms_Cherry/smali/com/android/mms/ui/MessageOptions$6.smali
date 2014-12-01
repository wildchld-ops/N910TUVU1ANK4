.class Lcom/android/mms/ui/MessageOptions$6;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions;->createAttachmentDialog(ZJLjava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$6;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x52

    if-eq p2, v5, :cond_0

    const/16 v5, 0x54

    if-ne p2, v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    check-cast p1, Landroid/app/AlertDialog;

    const v5, 0x7f0b007a

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x42

    if-eq v5, v6, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_4

    :cond_2
    invoke-virtual {v1}, Landroid/widget/ListView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v5, 0x7f0b004e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->playSoundEffect(I)V

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_0
.end method
