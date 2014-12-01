.class Lcom/android/settings/myprofile/EditMyProfileDialog$3;
.super Ljava/lang/Object;
.source "EditMyProfileDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myprofile/EditMyProfileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myprofile/EditMyProfileDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/myprofile/EditMyProfileDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myprofile/EditMyProfileDialog$3;->this$0:Lcom/android/settings/myprofile/EditMyProfileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/myprofile/EditMyProfileDialog$3;->this$0:Lcom/android/settings/myprofile/EditMyProfileDialog;

    # invokes: Lcom/android/settings/myprofile/EditMyProfileDialog;->updateLabel(I)V
    invoke-static {v1, v0}, Lcom/android/settings/myprofile/EditMyProfileDialog;->access$400(Lcom/android/settings/myprofile/EditMyProfileDialog;I)V

    return-void
.end method
