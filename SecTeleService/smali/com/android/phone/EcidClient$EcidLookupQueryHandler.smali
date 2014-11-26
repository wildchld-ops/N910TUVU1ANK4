.class Lcom/android/phone/EcidClient$EcidLookupQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EcidClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EcidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EcidLookupQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EcidClient;


# direct methods
.method public constructor <init>(Lcom/android/phone/EcidClient;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private getFlag(Landroid/database/Cursor;I)Z
    .locals 4
    .param p1    # Landroid/database/Cursor;
    .param p2    # I

    const-string v1, "Phone-ECID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFlag called with - Cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " col:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/database/Cursor;
    .param p2    # I

    const-string v1, "Phone-ECID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString called with - Cursor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " col:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    iget-object v1, v1, Lcom/android/phone/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    iget-object v1, v1, Lcom/android/phone/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    const-string v1, "Phone-ECID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete: ctx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    const-string v3, "cid_pNumber"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/EcidClient;->m_callerId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    const-string v3, "cid_pName"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/EcidClient;->m_cname:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    const-string v3, "cid_pCompany"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/EcidClient;->m_bizName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    const-string v3, "cid_pFirstName"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/EcidClient;->m_firstName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    const-string v3, "cid_pLastName"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/EcidClient;->m_lastName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    const-string v3, "cid_pCityName"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/EcidClient;->m_cityName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    const-string v3, "cid_pStateName"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/EcidClient;->m_stateName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    const-string v3, "cid_pStateAbbr"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/EcidClient;->m_stateAbbr:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    const-string v3, "cid_pCountryName"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/EcidClient;->m_countryName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    const-string v3, "cid_pImage"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/EcidClient;->m_urlPicture:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    const-string v3, "cid_bSameNetwork"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->getFlag(Landroid/database/Cursor;I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/phone/EcidClient;->m_bSameNetwork:Z

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    const-string v3, "cid_bFriends"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->getFlag(Landroid/database/Cursor;I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/phone/EcidClient;->m_bFriends:Z

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    const-string v3, "cid_bPreferCidImage"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->getFlag(Landroid/database/Cursor;I)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/phone/EcidClient;->m_bPreferCidImage:Z

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    const-string v3, "cid_pDisplayName"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    iget-object v3, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    iget-object v4, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    iget-object v4, v4, Lcom/android/phone/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/android/phone/EcidClient;->getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    iput-object v2, v1, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->this$0:Lcom/android/phone/EcidClient;

    invoke-virtual {v1, v0}, Lcom/android/phone/EcidClient;->updateCallerInfo(Landroid/content/Context;)Z

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method
