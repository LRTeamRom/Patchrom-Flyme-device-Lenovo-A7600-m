.class Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/CryptKeeper;Lcom/flyme/deviceoriginalsettings/CryptKeeper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/CryptKeeper;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/CryptKeeper$1;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;-><init>(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)V

    return-void
.end method

.method private hide(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 159
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    invoke-virtual {v1, p1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 161
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 167
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # invokes: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$100(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 169
    .local v1, "service":Landroid/os/storage/IMountService;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 172
    :goto_0
    return-object v2

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    const-string v3, "Error while decrypting..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 14
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    const v13, 0x7f0e0026

    const/16 v12, 0x1e

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 178
    const-string v6, "CryptKeeper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failedAttempts : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_2

    .line 182
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 183
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v6

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$200(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 184
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v6

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$200(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    :cond_0
    const v6, 0x7f0e00d4

    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 187
    const v6, 0x7f0e00d5

    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 188
    const v6, 0x7f0e0045

    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 189
    invoke-direct {p0, v13}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 190
    const v6, 0x7f0e00dd

    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 191
    const v6, 0x7f0e00d1

    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v12, :cond_3

    .line 194
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    const-string v6, "android.intent.extra.REASON"

    const-string v7, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    invoke-virtual {v6, v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 198
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 200
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    const v7, 0x7f04003a

    invoke-virtual {v6, v7}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->setContentView(I)V

    .line 201
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # invokes: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->showFactoryReset(Z)V
    invoke-static {v6, v10}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$300(Lcom/flyme/deviceoriginalsettings/CryptKeeper;Z)V

    goto :goto_0

    .line 205
    :cond_4
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 206
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 207
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v6

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$200(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 208
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v6

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$200(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0x5dc

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    rem-int/lit8 v6, v6, 0x5

    if-nez v6, :cond_6

    .line 211
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # setter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mCooldown:I
    invoke-static {v6, v12}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$402(Lcom/flyme/deviceoriginalsettings/CryptKeeper;I)I

    .line 212
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # invokes: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->cooldown()V
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$500(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)V

    goto :goto_0

    .line 214
    :cond_6
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    invoke-virtual {v6, v13}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 216
    .local v3, "status":Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    rsub-int/lit8 v2, v6, 0x1e

    .line 217
    .local v2, "remainingAttempts":I
    const/4 v6, 0x5

    if-ge v2, v6, :cond_9

    .line 218
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    const v7, 0x7f0a0108

    invoke-virtual {v6, v7}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 219
    .local v5, "warningTemplate":Ljava/lang/CharSequence;
    new-array v6, v10, [Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 221
    .local v4, "warning":Ljava/lang/CharSequence;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .end local v4    # "warning":Ljava/lang/CharSequence;
    .end local v5    # "warningTemplate":Ljava/lang/CharSequence;
    :goto_1
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 227
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 230
    :cond_7
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$600(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 231
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$600(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 232
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 234
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$600(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v0, v6, v11}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 235
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # invokes: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v6, v10}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$700(Lcom/flyme/deviceoriginalsettings/CryptKeeper;Z)V

    .line 237
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 238
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 223
    :cond_9
    const v6, 0x7f0a0b65

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
