.class Lcom/android/settings/wfd/WfdPickerDialog$1;
.super Ljava/lang/Object;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
