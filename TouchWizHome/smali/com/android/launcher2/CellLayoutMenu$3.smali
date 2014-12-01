.class Lcom/android/launcher2/CellLayoutMenu$3;
.super Ljava/lang/Object;
.source "CellLayoutMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutMenu;->showViewTypeRearrangeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutMenu;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CellLayoutMenu$3;->this$0:Lcom/android/launcher2/CellLayoutMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutMenu$3;->this$0:Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "MenuView.ViewType"

    sget-object v3, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutMenu$3;->this$0:Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/launcher2/MenuViewTypeDialog;->createAndShow(Lcom/android/launcher2/MenuView$ViewType;Landroid/app/FragmentManager;)V

    return-void
.end method
