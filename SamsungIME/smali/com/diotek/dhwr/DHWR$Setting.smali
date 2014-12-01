.class public Lcom/diotek/dhwr/DHWR$Setting;
.super Ljava/lang/Object;
.source "DHWR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/dhwr/DHWR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Setting"
.end annotation


# instance fields
.field private mId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/diotek/dhwr/DHWR;->CreateSettingObject()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/diotek/dhwr/DHWR$Setting;->mId:J

    return-void
.end method


# virtual methods
.method public AddLanguage(II)I
    .locals 2

    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Setting;->mId:J

    invoke-static {v0, v1, p1, p2}, Lcom/diotek/dhwr/DHWR;->AddLanguage(JII)I

    move-result v0

    return v0
.end method

.method public ClearLanguage()I
    .locals 2

    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Setting;->mId:J

    invoke-static {v0, v1}, Lcom/diotek/dhwr/DHWR;->ClearLanguage(J)I

    move-result v0

    return v0
.end method

.method public GetHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Setting;->mId:J

    return-wide v0
.end method

.method public GetLanguageSize()I
    .locals 2

    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Setting;->mId:J

    invoke-static {v0, v1}, Lcom/diotek/dhwr/DHWR;->GetLanguageSize(J)I

    move-result v0

    return v0
.end method

.method public SetCandidateSize(I)I
    .locals 2

    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Setting;->mId:J

    invoke-static {v0, v1, p1}, Lcom/diotek/dhwr/DHWR;->SetCandidateSize(JI)I

    move-result v0

    return v0
.end method

.method public SetContinuity(Z)I
    .locals 2

    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Setting;->mId:J

    invoke-static {v0, v1, p1}, Lcom/diotek/dhwr/DHWR;->SetContinuity(JZ)I

    move-result v0

    return v0
.end method

.method public SetMode(I)I
    .locals 2

    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Setting;->mId:J

    invoke-static {v0, v1, p1}, Lcom/diotek/dhwr/DHWR;->SetRecognitionMode(JI)I

    move-result v0

    return v0
.end method

.method public SetUserCharSet([C)I
    .locals 2

    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Setting;->mId:J

    invoke-static {v0, v1, p1}, Lcom/diotek/dhwr/DHWR;->SetUserCharSet(J[C)I

    move-result v0

    return v0
.end method

.method public SetWritingArea(IIIII)I
    .locals 7

    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Setting;->mId:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/diotek/dhwr/DHWR;->SetWritingArea(JIIIII)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/diotek/dhwr/DHWR$Setting;->mId:J

    invoke-static {v0, v1}, Lcom/diotek/dhwr/DHWR;->DestroySettingObject(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
