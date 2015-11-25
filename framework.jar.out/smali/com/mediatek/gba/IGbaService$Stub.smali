.class public abstract Lcom/mediatek/gba/IGbaService$Stub;
.super Landroid/os/Binder;
.source "IGbaService.java"

# interfaces
.implements Lcom/mediatek/gba/IGbaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gba/IGbaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gba/IGbaService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.gba.IGbaService"

.field static final TRANSACTION_getGbaSupported:I = 0x1

.field static final TRANSACTION_getGbaSupportedForSubscriber:I = 0x2

.field static final TRANSACTION_isGbaKeyExpired:I = 0x3

.field static final TRANSACTION_isGbaKeyExpiredForSubscriber:I = 0x4

.field static final TRANSACTION_runGbaAuthentication:I = 0x5

.field static final TRANSACTION_runGbaAuthenticationForSubscriber:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.mediatek.gba.IGbaService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/gba/IGbaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/gba/IGbaService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.mediatek.gba.IGbaService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/gba/IGbaService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/gba/IGbaService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/mediatek/gba/IGbaService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/gba/IGbaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "com.mediatek.gba.IGbaService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/gba/IGbaService$Stub;->getGbaSupported()I

    move-result v10

    .line 52
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    .end local v10    # "_result":I
    :sswitch_2
    const-string v0, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 61
    .local v6, "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/mediatek/gba/IGbaService$Stub;->getGbaSupportedForSubscriber(J)I

    move-result v10

    .line 62
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    .end local v6    # "_arg0":J
    .end local v10    # "_result":I
    :sswitch_3
    const-string v0, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 73
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/gba/IGbaService$Stub;->isGbaKeyExpired(Ljava/lang/String;[B)Z

    move-result v10

    .line 74
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v10, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 80
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v10    # "_result":Z
    :sswitch_4
    const-string v0, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 86
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 87
    .local v8, "_arg2":J
    invoke-virtual {p0, v1, v2, v8, v9}, Lcom/mediatek/gba/IGbaService$Stub;->isGbaKeyExpiredForSubscriber(Ljava/lang/String;[BJ)Z

    move-result v10

    .line 88
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v10, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 94
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v8    # "_arg2":J
    .end local v10    # "_result":Z
    :sswitch_5
    const-string v0, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 100
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    .line 101
    .local v3, "_arg2":Z
    :goto_3
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/gba/IGbaService$Stub;->runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v10

    .line 102
    .local v10, "_result":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v10, :cond_3

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/mediatek/gba/NafSessionKey;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 100
    .end local v3    # "_arg2":Z
    .end local v10    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 108
    .restart local v3    # "_arg2":Z
    .restart local v10    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 114
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Z
    .end local v10    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :sswitch_6
    const-string v0, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 120
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    .line 122
    .restart local v3    # "_arg2":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg3":J
    move-object v0, p0

    .line 123
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/gba/IGbaService$Stub;->runGbaAuthenticationForSubscriber(Ljava/lang/String;[BZJ)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v10

    .line 124
    .restart local v10    # "_result":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v10, :cond_5

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/mediatek/gba/NafSessionKey;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 120
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":J
    .end local v10    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 130
    .restart local v3    # "_arg2":Z
    .restart local v4    # "_arg3":J
    .restart local v10    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
