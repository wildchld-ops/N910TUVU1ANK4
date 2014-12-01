.class public Lcom/touchtype/personalizer/service/WeiboPersonalizer;
.super Lcom/touchtype/personalizer/Personalizer;
.source "WeiboPersonalizer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/Personalizer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static createParams(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/service/util/PostParams;
    .locals 2

    new-instance v0, Lcom/touchtype_fluency/service/util/PostParams;

    invoke-direct {v0}, Lcom/touchtype_fluency/service/util/PostParams;-><init>()V

    const-string v1, "oauth_token"

    invoke-virtual {v0, v1, p0}, Lcom/touchtype_fluency/service/util/PostParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "token_secret"

    invoke-virtual {v0, v1, p1}, Lcom/touchtype_fluency/service/util/PostParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_personalize_weibo"

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "Weibo"

    return-object v0
.end method

.method public getServicePath()Ljava/lang/String;
    .locals 1

    const-string v0, "weibo"

    return-object v0
.end method

.method public startPersonalization(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/Personalizer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/touchtype/personalizer/PersonalizerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "service"

    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/WeiboPersonalizer;->getServiceId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/touchtype/personalizer/service/WeiboPersonalizer;->getServiceId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
