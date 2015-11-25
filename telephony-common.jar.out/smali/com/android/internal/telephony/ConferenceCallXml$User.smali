.class public Lcom/android/internal/telephony/ConferenceCallXml$User;
.super Ljava/lang/Object;
.source "ConferenceCallXml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ConferenceCallXml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "User"
.end annotation


# instance fields
.field private mConnectionIndex:I

.field private mDisplayText:Ljava/lang/String;

.field private mEntity:Ljava/lang/String;

.field private mIndex:I

.field private mSipTelUri:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/ConferenceCallXml;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ConferenceCallXml;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->this$0:Lcom/android/internal/telephony/ConferenceCallXml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "disconnected"

    iput-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->mStatus:Ljava/lang/String;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->mConnectionIndex:I

    return-void
.end method


# virtual methods
.method public getConnectionIndex()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->mConnectionIndex:I

    return v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->mDisplayText:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->mEntity:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->mIndex:I

    return v0
.end method

.method public getSipTelUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->mSipTelUri:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectionIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->mConnectionIndex:I

    .line 66
    return-void
.end method

.method setDisplayText(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayText"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->mDisplayText:Ljava/lang/String;

    .line 54
    return-void
.end method

.method setEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "entity"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->mEntity:Ljava/lang/String;

    .line 46
    return-void
.end method

.method setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->mIndex:I

    .line 62
    return-void
.end method

.method setSipTelUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->mSipTelUri:Ljava/lang/String;

    .line 50
    return-void
.end method

.method setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/ConferenceCallXml$User;->mStatus:Ljava/lang/String;

    .line 58
    return-void
.end method
