bitfield Flags {
	noSignatureVerification : 1;
	reserved : 31;
};

enum ECDSAAlgorithm : u32 {
	P_256_NIST = 1,
	BRAINPOOL_256 = 2
};

enum BinaryType : u8 {
	U_BOOT = 0x00, /* No longer available in newer boot ROM versions */
	
	TF_A_0 = 0x10,
	TF_A_1 = 0x11,
	TF_A_2 = 0x12,
	TF_A_3 = 0x13,
	TF_A_4 = 0x14,
	TF_A_5 = 0x15,
	TF_A_6 = 0x16,
	TF_A_7 = 0x17,
	TF_A_8 = 0x18,
	TF_A_9 = 0x19,
	TF_A_10 = 0x1A,
	TF_A_11 = 0x1B,
	TF_A_12 = 0x1C,
	TF_A_13 = 0x1D,
	TF_A_14 = 0x1E,
	TF_A_15 = 0x1F,
	
	 /* No longer available in newer boot ROM versions */
	OPTEE_0 = 0x20,
	OPTEE_1 = 0x21,
	OPTEE_2 = 0x22,
	OPTEE_3 = 0x23,
	OPTEE_4 = 0x24,
	OPTEE_5 = 0x25,
	OPTEE_6 = 0x26,
	OPTEE_7 = 0x27,
	OPTEE_8 = 0x28,
	OPTEE_9 = 0x29,
	OPTEE_10 = 0x2A,
	OPTEE_11 = 0x2B,
	OPTEE_12 = 0x2C,
	OPTEE_13 = 0x2D,
	OPTEE_14 = 0x2E,
	OPTEE_15 = 0x2F,
	
	Coprocessor = 0x30,
};

struct Version {
	padding[1];
	u8 major;
	u8 minor;
	padding[1];
};

struct Header {
	char magic[4];
	u8 signature[64];
	u32 checksum;
	Version headerVersion;
	u32 imageLength;
	u32 imageEntryPoint;
	padding[4];
	u32 loadAddress;
	padding[4];
	u32 imageVersion;
	Flags flags;
	ECDSAAlgorithm ecdsaAlgorithm;
	u8 ecdsaPublicKey[64];
	padding[83];
	BinaryType binaryType;
};

Header header @ 0x00;
u8 payload[dataSize() - sizeof(header)] @ sizeof(header);
