.class Lcom/android/phone/RemoveAutoRejectItemDialog$5;
.super Ljava/lang/Object;
.source "RemoveAutoRejectItemDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RemoveAutoRejectItemDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RemoveAutoRejectItemDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/RemoveAutoRejectItemDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RemoveAutoRejectItemDialog$5;->this$0:Lcom/android/phone/RemoveAutoRejectItemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/RemoveAutoRejectItemDialog$5;->this$0:Lcom/android/phone/RemoveAutoRejectItemDialog;

    invoke-virtual {v0}, Lcom/android/phone/RemoveAutoRejectItemDialog;->finish()V

    return-void
.end method
