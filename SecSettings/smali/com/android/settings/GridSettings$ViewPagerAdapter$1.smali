.class Lcom/android/settings/GridSettings$ViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings$ViewPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/GridSettings$ViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings$ViewPagerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter$1;->this$1:Lcom/android/settings/GridSettings$ViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/GridSettings$ViewPagerAdapter$1;->this$1:Lcom/android/settings/GridSettings$ViewPagerAdapter;

    iget-object v1, v1, Lcom/android/settings/GridSettings$ViewPagerAdapter;->this$0:Lcom/android/settings/GridSettings;

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v2, v0

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    # invokes: Landroid/preference/PreferenceActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    invoke-static/range {v1 .. v6}, Lcom/android/settings/GridSettings;->access$1100(Lcom/android/settings/GridSettings;Landroid/widget/ListView;Landroid/view/View;IJ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
