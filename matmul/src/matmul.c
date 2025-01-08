#define DIM 40

int main() {

    int c1 = DIM;
    int r2 = c1;
    int r1 = DIM;
    int c2 = DIM;

    double mat1[r1][c1], mat2[r2][c2], result[r1][c2];

    double val = 1.0f;
    for (int i = 0; i < r1; i++) {
        for (int j = 0; j < c1; j++) {
            mat1[i][j] = val;
            val += 0.2345f;
        }
    }

    for (int i = 0; i < r2; i++) {
        for (int j = 0; j < c2; j++) {
            mat2[i][j] = val;
            val += 0.98732f;
        }
    }

    // Perform matrix multiplication
    for (int i = 0; i < r1; i++) {
        for (int j = 0; j < c2; j++) {
            result[i][j] = 0;
            for (int k = 0; k < c1; k++) {
                result[i][j] += mat1[i][k] * mat2[k][j];
            }
        }
    }

    return 0;
}