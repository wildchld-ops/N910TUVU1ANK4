.class Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog$1;
.super Ljava/lang/Object;
.source "ByteUtf8CombinedFilterWithDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog$1;->this$0:Lcom/android/mms/util/ByteUtf8CombinedFilterWithDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
