.class public final Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;
.super Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTreeNode;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mACInterfaceNodes:Ljava/util/ArrayList;

.field public final mEndpointNodes:Ljava/util/ArrayList;

.field public final mInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mEndpointNodes:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mACInterfaceNodes:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 19
    .line 20
    return-void
.end method