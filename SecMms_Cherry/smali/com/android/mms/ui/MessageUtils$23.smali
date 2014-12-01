.class final Lcom/android/mms/ui/MessageUtils$23;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->showLinksContextMenu(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialogActivity:Landroid/app/Activity;

.field final synthetic val$dialogUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$23;->val$dialogUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$23;->val$dialogActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$23;->val$dialogUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/util/PackageInfo;->getIntentForUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$23;->val$dialogActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
