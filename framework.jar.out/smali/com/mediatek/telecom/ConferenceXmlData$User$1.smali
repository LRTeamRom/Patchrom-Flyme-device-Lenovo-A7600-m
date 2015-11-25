.class final Lcom/mediatek/telecom/ConferenceXmlData$User$1;
.super Ljava/lang/Object;
.source "ConferenceXmlData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telecom/ConferenceXmlData$User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mediatek/telecom/ConferenceXmlData$User;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/telecom/ConferenceXmlData$User;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "status":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "index":Ljava/lang/String;
    new-instance v3, Lcom/mediatek/telecom/ConferenceXmlData$User;

    invoke-direct {v3, v0, v2, v1}, Lcom/mediatek/telecom/ConferenceXmlData$User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/mediatek/telecom/ConferenceXmlData$User$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/telecom/ConferenceXmlData$User;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/telecom/ConferenceXmlData$User;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 114
    new-array v0, p1, [Lcom/mediatek/telecom/ConferenceXmlData$User;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/mediatek/telecom/ConferenceXmlData$User$1;->newArray(I)[Lcom/mediatek/telecom/ConferenceXmlData$User;

    move-result-object v0

    return-object v0
.end method
