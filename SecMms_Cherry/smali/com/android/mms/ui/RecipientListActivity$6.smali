.class Lcom/android/mms/ui/RecipientListActivity$6;
.super Ljava/lang/Object;
.source "RecipientListActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientListActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/RecipientListActivity$6;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity$6;->this$0:Lcom/android/mms/ui/RecipientListActivity;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/RecipientListActivity;->updateThreadAlarm(Z)V

    return-void
.end method
