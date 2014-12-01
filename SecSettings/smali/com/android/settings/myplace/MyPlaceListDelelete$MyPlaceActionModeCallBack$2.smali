.class Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$2;
.super Ljava/lang/Object;
.source "MyPlaceListDelelete.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$2;->this$1:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
