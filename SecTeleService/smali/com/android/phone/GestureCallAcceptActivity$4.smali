.class Lcom/android/phone/GestureCallAcceptActivity$4;
.super Ljava/lang/Object;
.source "GestureCallAcceptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GestureCallAcceptActivity;->showEnableSettingDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GestureCallAcceptActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/GestureCallAcceptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GestureCallAcceptActivity$4;->this$0:Lcom/android/phone/GestureCallAcceptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/GestureCallAcceptActivity$4;->this$0:Lcom/android/phone/GestureCallAcceptActivity;

    invoke-virtual {v0}, Lcom/android/phone/GestureCallAcceptActivity;->onClickEnableSettingsButtonOK()V

    return-void
.end method
