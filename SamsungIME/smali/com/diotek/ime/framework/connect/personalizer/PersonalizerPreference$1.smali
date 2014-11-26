.class Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonalizerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$1;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.action.gmail.timestamp.update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$1;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    # getter for: Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I
    invoke-static {v2}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->access$000(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_0
    const-string v2, "com.android.action.facbook.timestamp.update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$1;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    # getter for: Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I
    invoke-static {v2}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->access$000(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    :cond_1
    const-string v2, "com.android.action.twitter.timestamp.update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$1;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    # getter for: Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->ID:I
    invoke-static {v2}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->access$000(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    :cond_2
    const-string v2, "timeUpdated"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$1;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$1;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    # getter for: Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentLocaleString:Ljava/lang/String;
    invoke-static {v4}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->access$100(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$1;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    # getter for: Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mCurrentTime:Ljava/lang/String;
    invoke-static {v4}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->access$200(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$1;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    # invokes: Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->setUpdatedTime()V
    invoke-static {v2}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->access$300(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)V

    :cond_3
    return-void
.end method
