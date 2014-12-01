.class Lcom/sec/epdg/IWlanApnSetting$IKeSetting;
.super Ljava/lang/Object;
.source "IWlanApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IKeSetting"
.end annotation


# instance fields
.field private mIkeConnectionTimeOut:I

.field private mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

.field private mIkeDpdTimeOut:I

.field private mIkeEapType:Lcom/sec/epdg/IWlanEnum$IkeEapType;

.field private mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

.field private mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

.field private mIkeLife:I

.field private mIkeNatValue:I

.field private mIkeWindowSize:I

.field private mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

.field final synthetic this$0:Lcom/sec/epdg/IWlanApnSetting;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IWlanApnSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->this$0:Lcom/sec/epdg/IWlanApnSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IWlanApnSetting;Lcom/sec/epdg/IWlanApnSetting$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;-><init>(Lcom/sec/epdg/IWlanApnSetting;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/IWlanApnSetting$IKeSetting;Lcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;I)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->updateIkeValues(Lcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;I)V

    return-void
.end method

.method private updateIkeValues(Lcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    iput-object p3, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    iput-object p2, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    iput-object p4, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    iput-object p9, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeEapType:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    iput p5, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeLife:I

    iput p6, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeWindowSize:I

    iput p8, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeDpdTimeOut:I

    iput p7, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeConnectionTimeOut:I

    iput p10, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeNatValue:I

    return-void
.end method


# virtual methods
.method public getmIkeConnectionTimeOut()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeConnectionTimeOut:I

    return v0
.end method

.method public getmIkeDhGroup()Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeDhGroup:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    return-object v0
.end method

.method public getmIkeDpdTimeOut()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeDpdTimeOut:I

    return v0
.end method

.method public getmIkeEapType()Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeEapType:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    return-object v0
.end method

.method public getmIkeEncryptType()Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeEncryptType:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    return-object v0
.end method

.method public getmIkeIntergrity()Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeIntergrity:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    return-object v0
.end method

.method public getmIkeLife()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeLife:I

    return v0
.end method

.method public getmIkeNatValue()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeNatValue:I

    return v0
.end method

.method public getmIkeWindowSize()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeWindowSize:I

    return v0
.end method

.method public getmIkeversion()Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->mIkeversion:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    return-object v0
.end method
