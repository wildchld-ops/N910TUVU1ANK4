.class Lcom/android/settings/GridSettings$4;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GridSettings$4;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/GridSettings$4;->this$0:Lcom/android/settings/GridSettings;

    iget-object v1, p0, Lcom/android/settings/GridSettings$4;->this$0:Lcom/android/settings/GridSettings;

    # getter for: Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/GridSettings;->access$700(Lcom/android/settings/GridSettings;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    # invokes: Lcom/android/settings/GridSettings;->switchToParent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/GridSettings;->access$800(Lcom/android/settings/GridSettings;Ljava/lang/String;)V

    return-void
.end method
