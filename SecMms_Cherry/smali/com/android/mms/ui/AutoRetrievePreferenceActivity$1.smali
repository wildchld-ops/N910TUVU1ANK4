.class Lcom/android/mms/ui/AutoRetrievePreferenceActivity$1;
.super Ljava/lang/Object;
.source "AutoRetrievePreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AutoRetrievePreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AutoRetrievePreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AutoRetrievePreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/AutoRetrievePreferenceActivity$1;->this$0:Lcom/android/mms/ui/AutoRetrievePreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/AutoRetrievePreferenceActivity$1;->this$0:Lcom/android/mms/ui/AutoRetrievePreferenceActivity;

    # invokes: Lcom/android/mms/ui/AutoRetrievePreferenceActivity;->restoreDefaultPreferences()V
    invoke-static {v0}, Lcom/android/mms/ui/AutoRetrievePreferenceActivity;->access$000(Lcom/android/mms/ui/AutoRetrievePreferenceActivity;)V

    return-void
.end method
