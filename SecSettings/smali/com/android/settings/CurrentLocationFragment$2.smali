.class Lcom/android/settings/CurrentLocationFragment$2;
.super Ljava/lang/Object;
.source "CurrentLocationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CurrentLocationFragment;->checkLocationAavilability()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CurrentLocationFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/CurrentLocationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CurrentLocationFragment$2;->this$0:Lcom/android/settings/CurrentLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment$2;->this$0:Lcom/android/settings/CurrentLocationFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
