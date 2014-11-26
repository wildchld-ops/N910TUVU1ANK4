.class Lcom/android/mms/settings/EntrancePrefActivity$2;
.super Ljava/lang/Object;
.source "EntrancePrefActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/EntrancePrefActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/EntrancePrefActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/EntrancePrefActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/EntrancePrefActivity$2;->this$0:Lcom/android/mms/settings/EntrancePrefActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/settings/EntrancePrefActivity$2;->this$0:Lcom/android/mms/settings/EntrancePrefActivity;

    # invokes: Lcom/android/mms/settings/EntrancePrefActivity;->restoreDefaultPreferences()V
    invoke-static {v0}, Lcom/android/mms/settings/EntrancePrefActivity;->access$000(Lcom/android/mms/settings/EntrancePrefActivity;)V

    return-void
.end method
