.class Lcom/android/settings/users/AppRestrictionsFragment$6;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/AppRestrictionsFragment;->createGalleryEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$6;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$6;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mClickedCheckBoxPref:Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1400(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    return-void
.end method
