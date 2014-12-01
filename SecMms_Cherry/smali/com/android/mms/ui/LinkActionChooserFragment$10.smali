.class final Lcom/android/mms/ui/LinkActionChooserFragment$10;
.super Lcom/android/mms/ui/LinkActionChooserFragment$Action;
.source "LinkActionChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/LinkActionChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LinkActionChooserFragment$Action;-><init>(I)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {p3, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v2, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
